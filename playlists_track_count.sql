SELECT
    p.Name,
    COUNT(pT.TrackId) total_track_count
FROM PlaylistTrack pT
Join Playlist p 
ON p.PlaylistId = pT.PlaylistId
GROUP BY p.Name